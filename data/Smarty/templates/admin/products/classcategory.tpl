<!--{*
/*
 * This file is part of EC-CUBE
 *
 * Copyright(c) 2000-2010 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */
*}-->
<form name="form1" id="form1" method="post" action="">
<input type="hidden" name="mode" value="edit" />
<input type="hidden" name="classcategory_id" value="<!--{$tpl_classcategory_id}-->" />
<!--{foreach key=key item=item from=$arrHidden}-->
<input type="hidden" name="<!--{$key}-->" value="<!--{$item|escape}-->" />
<!--{/foreach}-->
<div id="products" class="contents-main">

  <table>
    <tr>
      <th>規格名</th>
      <td><!--{$tpl_class_name}--></td>
    </tr>
    <tr>
      <th>分類名<span class="attention"> *</span></th>
      <td>
        <!--{if $arrErr.name}-->
        <span class="attention"><!--{$arrErr.name}--></span>
        <!--{/if}-->
        <input type="text" name="name" value="<!--{$arrForm.name|escape}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" style="" size="30" class="box30" />
        <span class="attention"> (上限<!--{$smarty.const.STEXT_LEN}-->文字)</span>
      </td>
    </tr>
  </table>
  <div class="btn">
    <a class="btn-normal" href="javascript:;" onclick="fnFormModeSubmit('form1', 'edit', '', '');"><span>この内容で登録する</span></a>
  </div>

  <table class="list">
    <tr>
      <th>分類名</th>
      <th>編集</th>
      <th>削除</th>
      <th>移動</th>
    </tr>
    <!--{section name=cnt loop=$arrClassCat}-->
    <tr style="background:<!--{if $tpl_classcategory_id != $arrClassCat[cnt].classcategory_id}-->#ffffff<!--{else}--><!--{$smarty.const.SELECT_RGB}--><!--{/if}-->;">
      <td><!--{* 規格名 *}--><!--{$arrClassCat[cnt].name|escape}--></td>
      <td align="center" >
      <!--{if $tpl_classcategory_id != $arrClassCat[cnt].classcategory_id}-->
      <a href="?" onclick="fnModeSubmit('pre_edit','classcategory_id', <!--{$arrClassCat[cnt].classcategory_id}-->); return false;">編集</a>
      <!--{else}-->
      編集中
      <!--{/if}-->
      </td>
      <td align="center">
      <a href="?" onclick="fnModeSubmit('delete','classcategory_id', <!--{$arrClassCat[cnt].classcategory_id}-->); return false;">削除</a>
      </td>
      <td align="center">
      <!--{if $smarty.section.cnt.iteration != 1}-->
      <a href="?" onclick="fnModeSubmit('up','classcategory_id', <!--{$arrClassCat[cnt].classcategory_id}-->); return false;">上へ</a>
      <!--{/if}-->
      <!--{if $smarty.section.cnt.iteration != $smarty.section.cnt.last}-->
      <a href="?" onclick="fnModeSubmit('down','classcategory_id', <!--{$arrClassCat[cnt].classcategory_id}-->); return false;">下へ</a>
      <!--{/if}-->
      </td>
    </tr>
    <!--{/section}-->
  </table>
  <div class="btn">
    <a class="btn-normal" href="./class.php"><span>規格一覧に戻る</span></a>
  </div>
</div>
</form>  