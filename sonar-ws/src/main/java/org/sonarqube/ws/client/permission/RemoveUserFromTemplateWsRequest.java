/*
 * SonarQube, open source software quality management tool.
 * Copyright (C) 2008-2014 SonarSource
 * mailto:contact AT sonarsource DOT com
 *
 * SonarQube is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 3 of the License, or (at your option) any later version.
 *
 * SonarQube is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

package org.sonarqube.ws.client.permission;

import javax.annotation.CheckForNull;
import javax.annotation.Nullable;

import static java.util.Objects.requireNonNull;

public class RemoveUserFromTemplateWsRequest {
  private String login;
  private String permission;
  private String templateId;
  private String templateName;

  public String getLogin() {
    return login;
  }

  public RemoveUserFromTemplateWsRequest setLogin(String login) {
    this.login = requireNonNull(login);
    return this;
  }

  public String getPermission() {
    return permission;
  }

  public RemoveUserFromTemplateWsRequest setPermission(String permission) {
    this.permission = requireNonNull(permission);
    return this;
  }

  @CheckForNull
  public String getTemplateId() {
    return templateId;
  }

  public RemoveUserFromTemplateWsRequest setTemplateId(@Nullable String templateId) {
    this.templateId = templateId;
    return this;
  }

  @CheckForNull
  public String getTemplateName() {
    return templateName;
  }

  public RemoveUserFromTemplateWsRequest setTemplateName(@Nullable String templateName) {
    this.templateName = templateName;
    return this;
  }
}
